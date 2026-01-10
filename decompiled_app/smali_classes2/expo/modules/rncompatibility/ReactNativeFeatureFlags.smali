.class public final Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;
.super Ljava/lang/Object;
.source "ReactNativeFeatureFlags.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;",
        "",
        "()V",
        "enableBridgelessArchitecture",
        "",
        "getEnableBridgelessArchitecture",
        "()Z",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

.field private static final enableBridgelessArchitecture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-direct {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;-><init>()V

    sput-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    .line 13
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    sput-boolean v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->enableBridgelessArchitecture:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableBridgelessArchitecture()Z
    .locals 1

    .line 13
    sget-boolean v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->enableBridgelessArchitecture:Z

    return v0
.end method
