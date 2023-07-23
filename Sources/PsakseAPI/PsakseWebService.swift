import Foundation
import Fluent
import Vapor
import WebServiceBuilder

public struct PsakseWebService : API, FileServer, LeafViewProvider, MigrationsProvider
{
    public var bundle: Bundle { Bundle.module }
    public let logBehaviour: LogBehaviour

    public var publicDirectoryPath: String
    public var publicDirectoryPathComponent: String

    public var resourcesDirectoryPath: String
    public var resourcesDirectoryPathComponent: String

    public var routeCollections: [RouteCollection] = [
        PsakseAPI()
    ]

    public var migrations: [Migration] = [
//        CreatePuzzle()
    ]

    public init(
        publicPath: String,
        resourcesPath: String,
        pathComponent: String,
        logBehaviour: LogBehaviour = .none
    )
    {
        publicDirectoryPath = publicPath
        resourcesDirectoryPath = resourcesPath
        publicDirectoryPathComponent = pathComponent
        resourcesDirectoryPathComponent = pathComponent
        self.logBehaviour = logBehaviour
    }
}
