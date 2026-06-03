# Data Quality Summary

## AMFI Code Validation
- Verify every scheme_code in fund_master exists in nav_history.
- Check for orphan NAV records.
- Validate duplicate scheme codes.
- Ensure scheme codes are numeric and non-null.

## Recommended Checks
1. Missing values
2. Duplicate rows
3. Invalid date formats
4. Negative NAV values
5. Inconsistent fund categories

## Example Validation Query (Pandas)

```python
missing_codes = set(fund_master['scheme_code']) - set(nav_history['scheme_code'])

print("Missing scheme codes:", len(missing_codes))
```
