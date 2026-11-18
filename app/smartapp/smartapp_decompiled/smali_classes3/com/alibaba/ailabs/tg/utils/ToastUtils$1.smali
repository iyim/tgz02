.class final Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 148
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->cancel()V

    .line 149
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
