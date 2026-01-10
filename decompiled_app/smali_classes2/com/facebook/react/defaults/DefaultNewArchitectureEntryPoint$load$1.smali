.class public final Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint$load$1;
.super Lcom/facebook/react/internal/featureflags/ReactNativeNewArchitectureFeatureFlagsDefaults;
.source "DefaultNewArchitectureEntryPoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->load(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/facebook/react/defaults/DefaultNewArchitectureEntryPoint$load$1",
        "Lcom/facebook/react/internal/featureflags/ReactNativeNewArchitectureFeatureFlagsDefaults;",
        "enableEventEmitterRetentionDuringGesturesOnAndroid",
        "",
        "useFabricInterop",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $fabricEnabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint$load$1;->$fabricEnabled:Z

    const/4 p1, 0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/featureflags/ReactNativeNewArchitectureFeatureFlagsDefaults;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public enableEventEmitterRetentionDuringGesturesOnAndroid()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint$load$1;->$fabricEnabled:Z

    return v0
.end method

.method public useFabricInterop()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint$load$1;->$fabricEnabled:Z

    return v0
.end method
