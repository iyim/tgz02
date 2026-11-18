.class Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog$MyOnDismissListener;
.super Ljava/lang/Object;
.source "GenieProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnDismissListener"
.end annotation


# instance fields
.field private mDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog$MyOnDismissListener;->mDialogWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog$MyOnDismissListener;->mDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-nez p1, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->access$000(Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->access$100(Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 51
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->access$002(Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;Z)Z

    return-void
.end method
