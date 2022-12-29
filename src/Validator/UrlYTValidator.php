<?php

namespace App\Validator;

use Symfony\Contracts\HttpClient\HttpClientInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;
use http\Exception\UnexpectedValueException;
use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class UrlYTValidator extends ConstraintValidator
{

    private HttpClientInterface $client;

    public function __construct(HttpClientInterface $client)
    {
        $this->client = $client;
    }

    public function validate($values, Constraint $constraint)
    {

        if (!$constraint instanceof UrlYT) {
            throw  new UnexpectedValueException($constraint, UrlYTValidator::class);
        }

        if (empty($values)) {
            return;
        }

        /**
         * @var UrlYT $constraint
         */
        foreach ($values as $item) {
            $url = $item->getUrl();
            $up = $this->verifyUrl($url);
            if (!strpos($url,'www.youtube.com')) {
                $this->context->buildViolation($constraint->message)->addViolation();

            } else {
                if ($up === false) {
                    $this->context->buildViolation($constraint->message)->addViolation();
                }
            }
        }
    }

    private function verifyUrl($url): bool 
    {
        try {
            $response = $this->client->request(
                'GET',
                $url
            );
        } catch (TransportExceptionInterface $e) {
            $this->context->buildViolation("Cannot reach this url!")->addViolation();
        }
        

        $statusCode = $response->getStatusCode();

        if ($statusCode >= 200 && $statusCode < 300) {
            return true;
        } else {
            return false;
        }
    }

}