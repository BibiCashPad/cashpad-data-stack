# Sellsy API Documentation

## Overview
**Version:** OpenAPI 3.0.2
**Base URL:** `https://api.sellsy.com/v2`
**Authentication:** OAuth 2.0 Bearer token required

## Key Features
### Authentication
- Use OAuth2 Bearer token
- Scopes required per endpoint (e.g., `comments.read`, `companies.write`)

### Pagination
Two methods available:
1. **Seek method** (preferred):
   - Cursor-based offset
   - Example: `GET /comments?limit=10&offset=WyIxMSJd`
2. **Numeric offset**:
   - Limited to 100,000 results
   - Example: `GET /comments?limit=10&offset=50`

### Error Handling
Standard JSON format:
```json
{
  "error": {
    "code": 404,
    "message": "Not Found",
    "context": "document_not_found",
    "details": {
      "id": "DOC12345"
    }
  }
}
```

## Rate Limiting
Monitor these headers:
- `X-Quota-Remaining-By-Second`
- `X-Quota-Remaining-By-Minute`
- `X-Quota-Remaining-By-Day`
- `X-Quota-Remaining-By-Month`

## Key Endpoints
### Companies
- `GET /companies` - List companies
- `POST /companies` - Create company
- `GET /companies/{id}` - Get company details
- `PUT /companies/{id}` - Update company
- `DELETE /companies/{id}` - Delete company

### Comments
- `GET /comments` - List comments
- `POST /comments` - Create comment
- `GET /comments/{id}` - Get comment
- `PUT /comments/{id}` - Update comment
- `DELETE /comments/{id}` - Delete comment

### Search
- `POST /companies/search` - Advanced company search
- `POST /comments/search` - Search comments

## Recommendations
1. Use seek-based pagination for large datasets
2. Always check rate limit headers and handle 429 responses with exponential backoff
3. Ensure proper scopes for write operations (e.g., `companies.write`)
4. Validate responses for required fields and error contexts
5. Use the seek method for better performance and larger result sets