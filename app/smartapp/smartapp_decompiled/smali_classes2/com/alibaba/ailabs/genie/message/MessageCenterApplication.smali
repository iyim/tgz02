.class public Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;
.super Landroid/app/Application;
.source "MessageCenterApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 3

    .line 15
    sput-object p1, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;->mApplication:Landroid/app/Application;

    const-string p1, "MessageClient"

    const-string v0, "applicationInit"

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication$1;-><init>(Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;)V

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
