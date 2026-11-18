.class public Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/transport/TemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadItem"
.end annotation


# instance fields
.field public mBirdParam:Ljava/lang/String;

.field public mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

.field public mTplId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mBirdParam:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    return-void
.end method
