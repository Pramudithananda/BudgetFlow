.class public final Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;
.super Lexpo/modules/kotlin/types/NullAwareTypeConverter;
.source "SharedObjectTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "*>;>",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00022\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u001f\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\t\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;",
        "T",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter;",
        "type",
        "Lkotlin/reflect/KType;",
        "(Lkotlin/reflect/KType;)V",
        "sharedObjectTypeConverter",
        "Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;",
        "sharedRefType",
        "getSharedRefType",
        "()Lkotlin/reflect/KType;",
        "sharedRefType$delegate",
        "Lkotlin/Lazy;",
        "getType",
        "checkInnerRef",
        "sharedRef",
        "convertNonOptional",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/sharedobjects/SharedRef;",
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
.field private final sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sharedRefType$delegate:Lkotlin/Lazy;

.field private final type:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/NullAwareTypeConverter;-><init>(Z)V

    .line 40
    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    .line 42
    new-instance v0, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    iput-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    .line 44
    new-instance p1, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;-><init>(Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedRefType$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final checkInnerRef(Lexpo/modules/kotlin/sharedobjects/SharedRef;)Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "*>;)",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "*>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->getSharedRefType()Lkotlin/reflect/KType;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lkotlin/reflect/KClass;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KClass;

    :cond_2
    if-nez v2, :cond_3

    return-object p1

    .line 81
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/reflect/full/KClasses;->isSuperclassOf(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 85
    :cond_4
    new-instance v0, Lexpo/modules/kotlin/exception/IncorrectRefTypeException;

    iget-object v1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lexpo/modules/kotlin/exception/IncorrectRefTypeException;-><init>(Lkotlin/reflect/KType;Ljava/lang/Class;)V

    throw v0
.end method


# virtual methods
.method public convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->checkInnerRef(Lexpo/modules/kotlin/sharedobjects/SharedRef;)Lexpo/modules/kotlin/sharedobjects/SharedRef;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type T of expo.modules.kotlin.sharedobjects.SharedRefTypeConverter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/InvalidSharedObjectTypeException;

    iget-object p2, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-direct {p1, p2}, Lexpo/modules/kotlin/exception/InvalidSharedObjectTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw p1
.end method

.method public bridge synthetic convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/sharedobjects/SharedRef;

    move-result-object p1

    return-object p1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 1

    .line 88
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedRefType()Lkotlin/reflect/KType;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedRefType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getType()Lkotlin/reflect/KType;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->type:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->sharedObjectTypeConverter:Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;->isTrivial()Z

    move-result v0

    return v0
.end method
