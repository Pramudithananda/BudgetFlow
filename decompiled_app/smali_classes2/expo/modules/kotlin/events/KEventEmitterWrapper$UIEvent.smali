.class final Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "KModuleEventEmitterWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/events/KEventEmitterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UIEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\nH\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0014J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "surfaceId",
        "",
        "viewId",
        "eventName",
        "",
        "eventBody",
        "Lcom/facebook/react/bridge/WritableMap;",
        "coalescingKey",
        "",
        "(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V",
        "Ljava/lang/Short;",
        "canCoalesce",
        "",
        "getCoalescingKey",
        "getEventData",
        "getEventName",
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


# instance fields
.field private final coalescingKey:Ljava/lang/Short;

.field private final eventBody:Lcom/facebook/react/bridge/WritableMap;

.field private final eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 113
    iput-object p3, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->eventName:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->eventBody:Lcom/facebook/react/bridge/WritableMap;

    .line 115
    iput-object p5, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->coalescingKey:Ljava/lang/Short;

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->coalescingKey:Ljava/lang/Short;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 119
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->coalescingKey:Ljava/lang/Short;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 120
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->eventBody:Lcom/facebook/react/bridge/WritableMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "createMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;->eventName:Ljava/lang/String;

    invoke-static {v0}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapperKt;->normalizeEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
