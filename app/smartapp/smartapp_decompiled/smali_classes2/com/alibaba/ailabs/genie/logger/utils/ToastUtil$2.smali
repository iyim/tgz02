.class final Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil;->show(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;->val$length:I

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;->val$length:I

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;->val$length:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;->val$message:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
