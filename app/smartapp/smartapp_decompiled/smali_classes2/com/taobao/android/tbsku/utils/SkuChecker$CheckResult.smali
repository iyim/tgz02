.class public Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;
.super Ljava/lang/Object;
.source "SkuChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/utils/SkuChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field public isValid:Z

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;->isValid:Z

    const-string v0, ""

    .line 114
    iput-object v0, p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;->msg:Ljava/lang/String;

    .line 117
    iput-boolean p1, p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;->isValid:Z

    .line 118
    iput-object p2, p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;->msg:Ljava/lang/String;

    return-void
.end method
