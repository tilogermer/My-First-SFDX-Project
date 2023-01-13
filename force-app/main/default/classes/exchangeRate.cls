public class exchangeRate {
   @future
    public static Map<String, Object> getExchangeRate(String url) {

        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndPoint(url);
        req.setMethod('GET');

        HttpResponse res = h.send(req);
        System.debug('response -->', res.getBody());

        Map<String,Object> resultMap = (Map <String,Object>) JSON.deserializeUntyped(res.getBody());
        System.debug('resultMap -->', resultMap);

        return resultMap;
    }
}