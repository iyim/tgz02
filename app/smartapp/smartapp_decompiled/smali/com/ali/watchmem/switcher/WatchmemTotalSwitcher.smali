.class public Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;
.super Ljava/lang/Object;
.source "WatchmemTotalSwitcher.java"

# interfaces
.implements Lcom/ali/watchmem/switcher/IWatchmemSwitcher;


# instance fields
.field private mCloseForever:Z

.field private mJavaSwitcher:Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;

.field private mNativeSwitcher:Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mCloseForever:Z

    .line 10
    new-instance v0, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;

    invoke-direct {v0}, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;-><init>()V

    iput-object v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mJavaSwitcher:Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;

    .line 11
    new-instance v0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;

    invoke-direct {v0}, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;-><init>()V

    iput-object v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mNativeSwitcher:Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mJavaSwitcher:Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;

    invoke-virtual {v0}, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->close()V

    .line 24
    iget-object v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mNativeSwitcher:Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;

    invoke-virtual {v0}, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->close()V

    return-void
.end method

.method public open()V
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mCloseForever:Z

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mJavaSwitcher:Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;

    invoke-virtual {v0}, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->open()V

    .line 17
    iget-object v0, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mNativeSwitcher:Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;

    invoke-virtual {v0}, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->open()V

    :cond_0
    return-void
.end method

.method public setCloseForever(Z)Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->mCloseForever:Z

    return-object p0
.end method
