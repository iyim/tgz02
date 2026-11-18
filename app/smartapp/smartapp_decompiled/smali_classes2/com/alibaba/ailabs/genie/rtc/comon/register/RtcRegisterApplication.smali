.class public Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;
.super Ljava/lang/Object;
.source "RtcRegisterApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static mRtcUtdIdReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;

.field private static mUserUnBinderReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerUnbindReceiver(Landroid/content/Context;)V
    .locals 4

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mUserUnBinderReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mUserUnBinderReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;

    .line 29
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mUserUnBinderReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mRtcUtdIdReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mRtcUtdIdReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;

    .line 35
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.intent.action.RtcReceiver"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mRtcUtdIdReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;

    const/4 v2, 0x0

    const-string v3, "com.alibaba.ailabs.genie.intent.permission.RtcReceiver"

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static unregisterUnbindReceiver(Landroid/content/Context;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mUserUnBinderReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/UserUnBinderReceiver;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->mRtcUtdIdReceiver:Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
