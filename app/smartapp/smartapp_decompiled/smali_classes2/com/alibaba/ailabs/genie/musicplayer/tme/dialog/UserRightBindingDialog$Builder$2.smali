.class Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;
.super Ljava/lang/Object;
.source "UserRightBindingDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$BindAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->saveAccountBind(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6743\u76ca\u5145\u503c\u672a\u6210\u529f\uff0c\u8bf7\u4e0b\u6b21\u518d\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success()V
    .locals 3

    const-string v0, "TME-binding"

    const-string v1, "saveAccountBind success "

    .line 256
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6743\u76ca\u5145\u503c\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Landroid/arch/core/util/Function;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
