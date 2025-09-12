.class public final Lexpo/modules/rncompatibility/RNCompatibleStaticWrapperKt;
.super Ljava/lang/Object;
.source "RNCompatibleStaticWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "parseBoxShadow",
        "Lcom/facebook/react/uimanager/style/BoxShadow;",
        "boxShadow",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "context",
        "Landroid/content/Context;",
        "expo-modules-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final parseBoxShadow(Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)Lcom/facebook/react/uimanager/style/BoxShadow;
    .locals 1

    const-string v0, "boxShadow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/facebook/react/uimanager/style/BoxShadow;->Companion:Lcom/facebook/react/uimanager/style/BoxShadow$Companion;

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/style/BoxShadow$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/uimanager/style/BoxShadow;

    move-result-object p0

    return-object p0
.end method
