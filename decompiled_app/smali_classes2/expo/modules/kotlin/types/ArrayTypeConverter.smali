.class public final Lexpo/modules/kotlin/types/ArrayTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "ArrayTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayTypeConverter.kt\nexpo/modules/kotlin/types/ArrayTypeConverter\n+ 2 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n+ 3 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 4 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,77:1\n7#2,2:78\n10#2:90\n5#3,4:80\n5#3,4:94\n11#4,6:84\n11#4,6:98\n11065#5:91\n11400#5,2:92\n11402#5:104\n37#6,2:105\n*S KotlinDebug\n*F\n+ 1 ArrayTypeConverter.kt\nexpo/modules/kotlin/types/ArrayTypeConverter\n*L\n28#1:78,2\n28#1:90\n29#1:80,4\n44#1:94,4\n29#1:84,6\n44#1:98,6\n43#1:91\n43#1:92,2\n43#1:104\n54#1:105,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J#\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fJ#\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0002\u0010\u0012J\u001d\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0012\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ArrayTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "arrayType",
        "Lkotlin/reflect/KType;",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "arrayElementConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "convertFromAny",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;",
        "createTypedArray",
        "size",
        "",
        "(I)[Ljava/lang/Object;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
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
.field private final arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private final arrayType:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 1

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arrayType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    .line 17
    invoke-interface {p2}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {p2}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    invoke-interface {p1, p2}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The array type should contain the type of the elements."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createTypedArray(I)[Ljava/lang/Object;
    .locals 2

    .line 67
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 67
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/ArrayTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;
    .locals 6

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, [Ljava/lang/Object;

    goto/16 :goto_2

    .line 43
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 92
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 52
    :try_start_0
    iget-object v5, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v5, v4, p2}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    instance-of p2, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p2, :cond_2

    .line 101
    instance-of p2, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p2, :cond_1

    new-instance p2, Lexpo/modules/kotlin/exception/CodedException;

    move-object v0, p1

    check-cast v0, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v0}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    :cond_1
    new-instance p2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_1

    .line 100
    :cond_2
    move-object p2, p1

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    .line 45
    :goto_1
    new-instance p1, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    .line 46
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    .line 47
    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 45
    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 97
    throw p1

    .line 104
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 91
    check-cast v0, Ljava/util/Collection;

    .line 106
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/ArrayTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;
    .locals 5

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/ArrayTypeConverter;->createTypedArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 27
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v3

    .line 32
    :try_start_0
    iget-object v4, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v4, v3, p2}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-interface {v3}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    instance-of p2, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez p2, :cond_1

    .line 87
    instance-of p2, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz p2, :cond_0

    new-instance p2, Lexpo/modules/kotlin/exception/CodedException;

    move-object v0, p1

    check-cast v0, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v0}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 88
    :cond_0
    new-instance p2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_1

    .line 86
    :cond_1
    move-object p2, p1

    check-cast p2, Lexpo/modules/kotlin/exception/CodedException;

    .line 30
    :goto_1
    new-instance p1, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 83
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 90
    invoke-interface {v3}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw p1

    :cond_2
    return-object v0
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 2

    .line 73
    sget-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    iget-object v1, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    return v0
.end method
