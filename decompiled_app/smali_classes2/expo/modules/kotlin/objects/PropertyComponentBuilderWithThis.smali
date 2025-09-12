.class public final Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
.super Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
.source "PropertyComponentBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ThisType:",
        "Ljava/lang/Object;",
        ">",
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis\n+ 2 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 3 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 5 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,65:1\n20#2:66\n20#2:80\n13#3,3:67\n13#3,3:81\n157#4:70\n148#4,7:73\n143#5,2:71\n*S KotlinDebug\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis\n*L\n43#1:66\n56#1:80\n43#1:67,3\n56#1:81,3\n56#1:70\n56#1:73,7\n56#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J0\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0006\u0008\u0001\u0010\u000b\u0018\u00012\u0014\u0008\u0004\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u000b0\rH\u0086\u0008\u00f8\u0001\u0000JT\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0006\u0008\u0001\u0010\u000f\u0018\u000128\u0008\u0004\u0010\u000c\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\u0010H\u0086\u0008\u00f8\u0001\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;",
        "ThisType",
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;",
        "thisType",
        "Lkotlin/reflect/KType;",
        "name",
        "",
        "(Lkotlin/reflect/KType;Ljava/lang/String;)V",
        "getThisType",
        "()Lkotlin/reflect/KType;",
        "get",
        "R",
        "body",
        "Lkotlin/Function1;",
        "set",
        "T",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "self",
        "newValue",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final thisType:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "thisType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->thisType:Lkotlin/reflect/KType;

    return-void
.end method


# virtual methods
.method public final synthetic get(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TThisType;+TR;>;)",
            "Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis<",
            "TThisType;>;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;

    .line 43
    new-instance v0, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v3, Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {p0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 66
    sget-object v3, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 67
    invoke-virtual {v3}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x4

    const-string v5, "R"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v3, :cond_0

    new-instance v3, Lexpo/modules/kotlin/types/ReturnType;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v3, v6}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v6, v3

    check-cast v6, Lexpo/modules/kotlin/types/ReturnType;

    .line 68
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    new-instance v4, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$get$1$1;

    invoke-direct {v4, p1}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$get$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 43
    const-string p1, "get"

    invoke-direct {v0, p1, v2, v3, v4}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 46
    move-object p1, v0

    check-cast p1, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 47
    invoke-virtual {p0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setOwnerType(Lkotlin/reflect/KType;)V

    .line 48
    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setCanTakeOwner(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    return-object p0
.end method

.method public final getThisType()Lkotlin/reflect/KType;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->thisType:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final synthetic set(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TThisType;-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis<",
            "TThisType;>;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;

    .line 56
    new-instance v0, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v1, 0x2

    new-array v1, v1, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v2, Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {p0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 70
    sget-object v2, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 71
    new-instance v3, Lkotlin/Pair;

    const/4 v4, 0x4

    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v2}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/AnyType;

    if-nez v2, :cond_0

    .line 70
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$$inlined$apply$lambda$1;->INSTANCE:Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$$inlined$apply$lambda$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 73
    new-instance v3, Lexpo/modules/kotlin/types/AnyType;

    .line 74
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 76
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 74
    invoke-direct {v6, v4, v8, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 73
    invoke-direct {v3, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v2, v3

    :cond_0
    const/4 v3, 0x1

    .line 70
    aput-object v2, v1, v3

    .line 80
    sget-object v2, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 81
    invoke-virtual {v2}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v2

    const-class v4, Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v2, :cond_1

    new-instance v2, Lexpo/modules/kotlin/types/ReturnType;

    const-class v4, Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v2, v4}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/types/ReturnType;

    .line 82
    sget-object v4, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v4}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v4, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$1$1;

    invoke-direct {v4, p1}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 56
    const-string p1, "set"

    invoke-direct {v0, p1, v1, v2, v4}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 59
    move-object p1, v0

    check-cast p1, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 60
    invoke-virtual {p0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setOwnerType(Lkotlin/reflect/KType;)V

    .line 61
    invoke-virtual {v0, v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setCanTakeOwner(Z)V

    .line 56
    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->setSetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    return-object p0
.end method
