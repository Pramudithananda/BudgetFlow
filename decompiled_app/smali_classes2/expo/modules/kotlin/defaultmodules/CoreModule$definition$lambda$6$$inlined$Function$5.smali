.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/CoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,579:1\n8#2,4:580\n28#3,10:584\n41#3:600\n39#3,4:601\n43#3,3:609\n50#3,2:613\n49#3:615\n1271#4,2:594\n1285#4,4:596\n8406#5,2:605\n9088#5,2:607\n9091#5:612\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6\n+ 2 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n121#1:580,4\n37#2:594,2\n37#2:596,4\n42#2:605,2\n42#2:607,2\n42#2:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6"
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
.field final synthetic this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$5;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 123
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$5;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    aget-object p1, p1, v0

    .line 122
    check-cast p1, Ljava/lang/String;

    .line 584
    iget-object v1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$5;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-virtual {v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 587
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinition()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 591
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getProps$expo_modules_core_release()Ljava/util/Map;

    move-result-object v2

    .line 592
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 594
    new-instance v3, Ljava/util/LinkedHashMap;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 596
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 597
    move-object v7, v3

    check-cast v7, Ljava/util/Map;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 593
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 597
    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 599
    :cond_2
    check-cast v3, Ljava/util/Map;

    .line 602
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getCallbacksDefinition()Lexpo/modules/kotlin/views/CallbacksDefinition;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 600
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/CallbacksDefinition;->getNames()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 605
    array-length v1, p1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 606
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    .line 607
    array-length v2, p1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 609
    invoke-static {v5}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapperKt;->normalizeEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 611
    const-string v8, "registrationName"

    invoke-static {v8, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 610
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 608
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    .line 613
    new-array p1, p1, [Lkotlin/Pair;

    const-string/jumbo v2, "validAttributes"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, p1, v0

    .line 614
    const-string v0, "directEventTypes"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v6

    .line 615
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    return-object v1
.end method
