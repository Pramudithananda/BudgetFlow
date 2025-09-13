.class public final synthetic Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lexpo/modules/kotlin/allocators/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Constructor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda1;->f$0:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda1;->f$0:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->$r8$lambda$B-8cAL8anWAYoqoKVC91EJvwsWA(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
