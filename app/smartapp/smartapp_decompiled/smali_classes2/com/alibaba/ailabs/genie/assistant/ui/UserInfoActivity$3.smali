.class Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$3;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->updateAccountInfo(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    const/4 v0, 0x1

    const-string v1, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/index/index&from=system"

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->access$100(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;ZLjava/lang/String;)V

    return-void
.end method
