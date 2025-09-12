.class public Lcom/facebook/react/config/ReactFeatureFlags;
.super Ljava/lang/Object;
.source "ReactFeatureFlags.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    since = "Use com.facebook.react.internal.featureflags.ReactNativeFeatureFlags instead."
.end annotation


# static fields
.field public static dispatchPointerEvents:Z = false

.field public static enableBridgelessArchitecture:Z = false
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "enableBridgelessArchitecture will be deleted in 0.77, please use DefaultNewArchitectureEntryPoint.load() to enable bridgeless architecture instead."
    .end annotation
.end field

.field public static enableCppPropsIteratorSetter:Z = false

.field public static volatile enableFabricRenderer:Z = false
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "enableFabricRenderer will be deleted in 0.77, please use DefaultNewArchitectureEntryPoint.load() to enable fabric instead."
    .end annotation
.end field

.field public static volatile useTurboModules:Z = false
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "useTurboModules will be deleted in 0.77, please use DefaultNewArchitectureEntryPoint.load() to enable TurboModules instead."
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
