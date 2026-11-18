.class Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;
.super Ljava/lang/Object;
.source "HuskyDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_network_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callHusky(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    :goto_0
    return-void
.end method
