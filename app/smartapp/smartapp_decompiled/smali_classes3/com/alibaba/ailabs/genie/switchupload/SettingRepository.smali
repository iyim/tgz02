.class public Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;
.super Ljava/lang/Object;
.source "SettingRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingRepository"


# instance fields
.field private mSettingUpdateListener:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;-><init>(Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;->mSettingUpdateListener:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;

    return-void
.end method


# virtual methods
.method public setGestureStatus(Landroid/content/Context;ZLcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V
    .locals 7

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGestureStatus...isOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 28
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "enable"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez p3, :cond_0

    const v1, 0x10c8e4

    .line 30
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;->mSettingUpdateListener:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;

    .line 31
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "gestureControl"

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->setUserDeviceSetting(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v1, 0x10c8e4

    .line 34
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "gestureControl"

    move-object v2, p3

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->setUserDeviceSetting(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public updateSwitchStatus(Landroid/content/Context;Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V
    .locals 10

    if-eqz p2, :cond_4

    .line 51
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 54
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchStatus...switchKey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isOpen = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SettingRepository"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchValue()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_3

    const v4, 0x10c8e4

    .line 59
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;->mSettingUpdateListener:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository$SettingUpdateListener;

    .line 60
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 59
    invoke-static/range {v4 .. v9}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->setUserDeviceSetting(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const v4, 0x10c8e4

    .line 63
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->getSwitchKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, p3

    .line 62
    invoke-static/range {v4 .. v9}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->setUserDeviceSetting(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
