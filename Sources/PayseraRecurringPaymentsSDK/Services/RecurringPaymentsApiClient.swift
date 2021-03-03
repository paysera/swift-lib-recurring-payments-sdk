import PayseraAccountsSDK
import PayseraCommonSDK
import PromiseKit

public class RecurringPaymentsApiClient: PSBaseApiClient {
    public func getRecurrence(id: String) -> Promise<Recurrence> {
        doRequest(requestRouter: RecurringPaymentsApiRequestRouter.getRecurrence(id: id))
    }
    
    public func getRecurrences(
        filter: RecurrenceFilter
    ) -> Promise<PSMetadataAwareResponse<Recurrence>> {
        doRequest(requestRouter: RecurringPaymentsApiRequestRouter.getRecurrences(filter: filter))
    }
    
    public func createRecurrence(_ recurrence: Recurrence) -> Promise<Recurrence> {
        doRequest(
            requestRouter: RecurringPaymentsApiRequestRouter.createRecurrence(
                recurrence: recurrence
            )
        )
    }
    
    public func updateRecurrence(id: String, recurrence: Recurrence) -> Promise<Recurrence> {
        doRequest(
            requestRouter: RecurringPaymentsApiRequestRouter.updateRecurrence(
                id: id,
                recurrence: recurrence
            )
        )
    }
    
    public func getRecurrenceTransfers(
        id: String,
        filter: RecurrenceFilter
    ) -> Promise<PSMetadataAwareResponse<PSTransfer>> {
        doRequest(
            requestRouter: RecurringPaymentsApiRequestRouter.getRecurrenceTransfers(
                id: id,
                filter: filter
            )
        )
    }
    
    public func cancelRecurrence(id: String) -> Promise<Void> {
        doRequest(requestRouter: RecurringPaymentsApiRequestRouter.cancelRecurrence(id: id))
    }
    
    public func repeatRecurrenceTransfer(
        recurrenceId: String,
        transferId: String
    ) -> Promise<Void> {
        doRequest(
            requestRouter: RecurringPaymentsApiRequestRouter.repeatRecurrenceTransfer(
                recurrenceId: recurrenceId,
                transferId: transferId
            )
        )
    }
    
    public func activateRecurrence(id: String) -> Promise<Void> {
        doRequest(requestRouter: RecurringPaymentsApiRequestRouter.activateRecurrence(id: id))
    }
    
    public func deactivateRecurrence(id: String) -> Promise<Void> {
        doRequest(requestRouter: RecurringPaymentsApiRequestRouter.deactivateRecurrence(id: id))
    }
}
