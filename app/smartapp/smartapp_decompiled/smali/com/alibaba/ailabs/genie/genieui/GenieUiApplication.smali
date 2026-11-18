.class public Lcom/alibaba/ailabs/genie/genieui/GenieUiApplication;
.super Landroid/app/Application;
.source "GenieUiApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static TAG:Ljava/lang/String; = "GenieUiApplication"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieUiApplication;->TAG:Ljava/lang/String;

    const-string v1, "init: start service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    const-class v1, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
