.class public final synthetic Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lexpo/modules/print/PrintDocumentAdapter;

.field public final synthetic f$1:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/print/PrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/print/PrintDocumentAdapter;

    iput-object p2, p0, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iput-object p3, p0, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/print/PrintDocumentAdapter;

    iget-object v1, p0, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v2, p0, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1, v2}, Lexpo/modules/print/PrintDocumentAdapter;->$r8$lambda$8zkybygBTwmq3ry11n-8WxE9K-A(Lexpo/modules/print/PrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
