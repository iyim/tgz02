.class public Landroid/taobao/windvane/service/WVEventResult;
.super Ljava/lang/Object;
.source "WVEventResult.java"


# instance fields
.field public isSuccess:Z

.field public resultObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    .line 23
    iput-object p2, p0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    return-void
.end method
