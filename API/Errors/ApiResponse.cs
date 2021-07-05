using API.Helpers;
namespace API.Errors
{
    public class ApiResponse
    {
        public ApiResponse(int statusCode, string message = null)
        {
            StatusCode = statusCode;
            //null coalescing operator in this case if message is null then GetDefaultMessageForStatusCode method will execute
            Message = message ?? GetDefaultMessageForStatusCode(statusCode);
        }

        public int StatusCode { get; set; }
        public string Message { get; set; }

        private string GetDefaultMessageForStatusCode(int statusCode)
        {
            return statusCode switch
            {
                400 => Messages.A_BAD_REQUEST_YOU_HAVE_MADE,
                401 => Messages.AUTHORIZE_YOU_ARE_NOT,
                403 => Messages.FORBIDDEN,
                404 => Messages.RESOURCE_FOUND,
                500 => Messages.ERROR_500,
                _ => null
            };
        }


    }
}