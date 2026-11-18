.class public abstract Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VSelectListActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# static fields
.field public static final CALL_TYPE:Ljava/lang/String; = "CHAT"

.field public static final CONTACTS_TYPE:Ljava/lang/String; = "CONTACT"

.field private static final TAG:Ljava/lang/String; = "contacts_select"


# instance fields
.field protected mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

.field protected mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 1

    const-string v0, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    .line 89
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    return-void
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ScreenUtils;->setTranslucentStatus(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->resolveIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->finish()V

    return-void

    .line 35
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_select_list_activity:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    const-string p1, "com.alibaba.ailabs.genie.custom.contacts"

    .line 37
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/AsrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->resolveIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected abstract resolveIntent(Landroid/content/Intent;)Z
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->overridePendingTransition(II)V

    return-void
.end method
