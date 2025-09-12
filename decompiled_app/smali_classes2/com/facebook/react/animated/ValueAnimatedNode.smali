.class public Lcom/facebook/react/animated/ValueAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "ValueAnimatedNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0010\u001a\u00020\u000bJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0005\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/react/animated/ValueAnimatedNode;",
        "Lcom/facebook/react/animated/AnimatedNode;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;)V",
        "nodeValue",
        "",
        "offset",
        "valueListener",
        "Lcom/facebook/react/animated/AnimatedNodeValueListener;",
        "extractOffset",
        "",
        "flattenOffset",
        "getAnimatedObject",
        "",
        "getValue",
        "onValueUpdate",
        "prettyPrint",
        "",
        "setValueListener",
        "listener",
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
.field public nodeValue:D

.field public offset:D

.field private valueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    if-eqz p1, :cond_0

    .line 17
    const-string/jumbo v0, "value"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    if-eqz p1, :cond_1

    .line 18
    const-string v0, "offset"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method


# virtual methods
.method public final extractOffset()V
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    return-void
.end method

.method public final flattenOffset()V
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    return-void
.end method

.method public getAnimatedObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()D
    .locals 4

    .line 22
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->update()V

    .line 25
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final onValueUpdate()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->valueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/animated/AnimatedNodeValueListener;->onValueUpdate(D)V

    :cond_0
    return-void
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 7

    .line 49
    iget v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->tag:I

    iget-wide v1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    iget-wide v3, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ValueAnimatedNode["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]: value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->valueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;

    return-void
.end method
