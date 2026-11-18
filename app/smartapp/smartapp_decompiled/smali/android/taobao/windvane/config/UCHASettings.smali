.class public Landroid/taobao/windvane/config/UCHASettings;
.super Ljava/lang/Object;
.source "UCHASettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/config/UCHASettings$ConfigRate;
    }
.end annotation


# instance fields
.field public appSecret:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public configUpdateMode:I

.field public debug:Z

.field public logUploadMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/config/UCHASettings;->appid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/config/UCHASettings;->appSecret:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCHASettings;->debug:Z

    .line 20
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings;->logUploadMode:I

    .line 23
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings;->configUpdateMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/config/UCHASettings;->appid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/config/UCHASettings;->appSecret:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCHASettings;->debug:Z

    .line 20
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings;->logUploadMode:I

    .line 23
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings;->configUpdateMode:I

    .line 15
    iput-object p1, p0, Landroid/taobao/windvane/config/UCHASettings;->appid:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Landroid/taobao/windvane/config/UCHASettings;->appSecret:Ljava/lang/String;

    return-void
.end method
