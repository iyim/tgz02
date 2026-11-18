.class Lcom/alibaba/genie/tradepay/mvp/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/tradepay/mvp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/tradepay/mvp/BaseActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$2;->this$0:Lcom/alibaba/genie/tradepay/mvp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMediaPolicy()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$2;->this$0:Lcom/alibaba/genie/tradepay/mvp/BaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getMediaPolicy()I

    move-result v0

    return v0
.end method
