.class final Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$3;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stringId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$3;->val$stringId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$3;->val$stringId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
