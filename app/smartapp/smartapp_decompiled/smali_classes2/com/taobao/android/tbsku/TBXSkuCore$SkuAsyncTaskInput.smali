.class Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;
.super Ljava/lang/Object;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkuAsyncTaskInput"
.end annotation


# instance fields
.field public mAbove:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mBelow:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLogics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScriptFile:Ljava/lang/String;

.field public mScriptMd5:Ljava/lang/String;

.field public mUltronFile:Ljava/lang/String;

.field public mUltronMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mUltronFile:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mUltronMd5:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mAbove:Ljava/util/Map;

    .line 369
    iput-object p4, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mBelow:Ljava/util/Map;

    .line 370
    iput-object p5, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mScriptFile:Ljava/lang/String;

    .line 371
    iput-object p6, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mScriptMd5:Ljava/lang/String;

    .line 372
    iput-object p7, p0, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;->mLogics:Ljava/util/Map;

    return-void
.end method
