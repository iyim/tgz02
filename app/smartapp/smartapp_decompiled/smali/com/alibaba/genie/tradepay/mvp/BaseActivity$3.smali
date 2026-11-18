.class Lcom/alibaba/genie/tradepay/mvp/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;


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

    .line 104
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$3;->this$0:Lcom/alibaba/genie/tradepay/mvp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyEvent(IILjava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$3;->this$0:Lcom/alibaba/genie/tradepay/mvp/BaseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onNotifyPushEvent(IILjava/lang/String;)V

    return-void
.end method
