.class final Lexpo/modules/fetch/ExpoFetchModule$cookieHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoFetchModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/react/modules/network/ForwardingCookieHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/facebook/react/modules/network/ForwardingCookieHandler;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/fetch/ExpoFetchModule;


# direct methods
.method constructor <init>(Lexpo/modules/fetch/ExpoFetchModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$cookieHandler$2;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/react/modules/network/ForwardingCookieHandler;
    .locals 2

    .line 30
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    iget-object v1, p0, Lexpo/modules/fetch/ExpoFetchModule$cookieHandler$2;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v1}, Lexpo/modules/fetch/ExpoFetchModule;->access$getReactContext(Lexpo/modules/fetch/ExpoFetchModule;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lexpo/modules/fetch/ExpoFetchModule$cookieHandler$2;->invoke()Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    move-result-object v0

    return-object v0
.end method
