.class final Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadableNativeMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/bridge/ReadableNativeMap;-><init>(Lcom/facebook/jni/HybridData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
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
.field final synthetic this$0:Lcom/facebook/react/bridge/ReadableNativeMap;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;->this$0:Lcom/facebook/react/bridge/ReadableNativeMap;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;->invoke()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;->this$0:Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReadableNativeMap;->access$getKeys(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    iget-object v2, p0, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;->this$0:Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReadableNativeMap;->access$importValues(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/facebook/react/bridge/ReadableNativeMap;->access$getCompanion$p()Lcom/facebook/react/bridge/ReadableNativeMap$Companion;

    invoke-static {}, Lcom/facebook/react/bridge/ReadableNativeMap;->access$getJniPassCounter$cp()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/facebook/react/bridge/ReadableNativeMap;->access$setJniPassCounter$cp(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 32
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;->this$0:Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-static {v5}, Lcom/facebook/react/bridge/ReadableNativeMap;->access$getKeys(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aget-object v6, v2, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
