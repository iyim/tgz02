.class public abstract Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ut/mini/IUTPageTrack;


# instance fields
.field protected mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->getUtPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->getUtPageSpm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spm-cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method public getReferPage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUtPageName()Ljava/lang/String;
.end method

.method public abstract getUtPageSpm()Ljava/lang/String;
.end method

.method protected initSystemUi()V
    .locals 1

    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ScreenUtils;->setTranslucentStatus(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract isOpenUt()Z
.end method

.method public synthetic lambda$onResume$1$BaseActivity()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "com.alibaba.ailabs.genie.custom.contacts"

    .line 35
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/AsrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->isOpenUt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/-$$Lambda$BaseActivity$Dt6ZcU8JazIIUUtSgkvJ-CaLLjk;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/-$$Lambda$BaseActivity$Dt6ZcU8JazIIUUtSgkvJ-CaLLjk;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
