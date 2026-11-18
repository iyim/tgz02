.class public Lcom/taobao/phenix/intf/event/SuccPhenixEvent;
.super Lcom/taobao/phenix/intf/event/PhenixEvent;
.source "SuccPhenixEvent.java"


# instance fields
.field drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private fromDisk:Z

.field fromMCache:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fromSecondary:Z

.field immediate:Z

.field private intermediate:Z


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/phenix/intf/event/PhenixEvent;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public fromDisk(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->fromDisk:Z

    return-void
.end method

.method public fromSecondary(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->fromSecondary:Z

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public isFromDisk()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->fromDisk:Z

    return v0
.end method

.method public isFromMCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->fromMCache:Z

    return v0
.end method

.method public isFromSecondary()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->fromSecondary:Z

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->immediate:Z

    return v0
.end method

.method public isIntermediate()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->intermediate:Z

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setFromMCache(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iput-boolean p1, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->fromMCache:Z

    return-void
.end method

.method public setImmediate(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->immediate:Z

    return-void
.end method

.method public setIntermediate(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->intermediate:Z

    return-void
.end method
