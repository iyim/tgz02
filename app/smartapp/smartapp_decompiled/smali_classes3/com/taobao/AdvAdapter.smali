.class public Lcom/taobao/AdvAdapter;
.super Ljava/lang/Object;
.source "AdvAdapter.java"


# instance fields
.field private final mAdv:Lcom/taobao/statistic/TBS$Adv;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBS$Adv;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/taobao/AdvAdapter;->mAdv:Lcom/taobao/statistic/TBS$Adv;

    return-void
.end method

.method public static getUtsid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    invoke-static {}, Lcom/taobao/statistic/TBS$Adv;->getUtsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
