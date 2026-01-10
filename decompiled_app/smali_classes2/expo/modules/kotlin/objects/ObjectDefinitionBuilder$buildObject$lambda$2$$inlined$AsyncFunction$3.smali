.class public final Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,579:1\n8#2,4:580\n60#3:584\n61#3,2:586\n63#3:589\n1855#4:585\n1856#4:588\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n*L\n240#1:580,4\n60#2:585\n60#2:588\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6"
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
.field final synthetic $type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

.field final synthetic this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    iput-object p2, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->$type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 239
    aget-object p1, p1, v0

    .line 241
    check-cast p1, Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    invoke-static {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->access$getEventObservers$p(Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 585
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/objects/EventObservingDefinition;

    .line 586
    iget-object v2, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->$type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    invoke-virtual {v1, v2, p1}, Lexpo/modules/kotlin/objects/EventObservingDefinition;->invokedIfNeed(Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
