.class public Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private app_version:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private publisher:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getApp_version()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->publisher:Ljava/lang/String;

    return-void
.end method
