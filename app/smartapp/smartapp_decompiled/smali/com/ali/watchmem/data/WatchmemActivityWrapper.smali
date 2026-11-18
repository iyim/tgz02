.class public Lcom/ali/watchmem/data/WatchmemActivityWrapper;
.super Ljava/lang/Object;
.source "WatchmemActivityWrapper.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ali/watchmem/data/WatchmemActivityWrapper;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ali/watchmem/data/WatchmemActivityWrapper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method
