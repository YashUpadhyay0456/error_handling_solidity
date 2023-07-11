# Error Handling Contract

This Solidity contract provides functions for vote counting and eligibility testing for voters and candidates. It includes error handling mechanisms to ensure proper execution and prevent undesired behavior.

## Functions

### `Vote_count(uint num)`

This function takes an unsigned integer `num` as a parameter and performs a pure assertion check. It ensures that the value of `num` is greater than or equal to zero, indicating that the vote count cannot be negative.

### `eligibility_test(uint _age)`

This function takes an unsigned integer `_age` as a parameter and performs a pure eligibility test. It checks if the `_age` is less than 18. If it is, the function reverts the transaction with an error message indicating that the person is not eligible to vote. Otherwise, it returns a success message indicating that the person is eligible to vote.

### `eligibility_for_candidate_test(uint a)`

This function takes an unsigned integer `a` as a parameter and performs a view eligibility test. It uses the `require` statement to check if `a` is greater than or equal to 21. If `a` is less than 21, the function reverts the transaction with an error message indicating that the person is not eligible to be a candidate as they are underage. Otherwise, it returns a success message indicating that the person is eligible to be a candidate for their party.

## License

This contract is licensed under the MIT license. Please see the [LICENSE](LICENSE) file for more information.

**Note:** This code is provided as an example and may require further modifications or improvements to be used in production environments.
