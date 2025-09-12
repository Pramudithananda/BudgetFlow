.class public interface abstract Lexpo/modules/kotlin/events/EventEmitter;
.super Ljava/lang/Object;
.source "EventEmitter.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/services/EventEmitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/events/EventEmitter$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\u0008f\u0018\u00002\u00020\u0001J3\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH&\u00a2\u0006\u0002\u0010\u000cJ3\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH&\u00a2\u0006\u0002\u0010\u000fJ\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0010H&J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0010\u0010\u0008\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0011H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/events/EventEmitter;",
        "Lexpo/modules/core/interfaces/services/EventEmitter;",
        "emit",
        "",
        "view",
        "Landroid/view/View;",
        "eventName",
        "",
        "eventBody",
        "Lcom/facebook/react/bridge/WritableMap;",
        "coalescingKey",
        "",
        "(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V",
        "viewId",
        "",
        "(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V",
        "Lexpo/modules/kotlin/records/Record;",
        "",
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


# virtual methods
.method public abstract emit(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V
.end method

.method public abstract emit(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V
.end method

.method public abstract emit(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
.end method

.method public abstract emit(Ljava/lang/String;Lexpo/modules/kotlin/records/Record;)V
.end method

.method public abstract emit(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method
