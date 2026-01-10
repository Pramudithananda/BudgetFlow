.class public abstract Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;
.super Ljava/lang/Object;
.source "NotificationOnlyHandler.kt"

# interfaces
.implements Lcom/facebook/react/packagerconnection/RequestHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0018\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;",
        "Lcom/facebook/react/packagerconnection/RequestHandler;",
        "()V",
        "onNotification",
        "",
        "params",
        "",
        "onRequest",
        "responder",
        "Lcom/facebook/react/packagerconnection/Responder;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNotification(Ljava/lang/Object;)V
.end method

.method public final onRequest(Ljava/lang/Object;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0

    const-string p1, "responder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string p1, "Request is not supported"

    invoke-interface {p2, p1}, Lcom/facebook/react/packagerconnection/Responder;->error(Ljava/lang/Object;)V

    const-class p2, Lcom/facebook/react/packagerconnection/JSPackagerClient;

    .line 16
    const-string p2, "JSPackagerClient"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
