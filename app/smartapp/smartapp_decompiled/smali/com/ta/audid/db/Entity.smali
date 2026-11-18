.class public Lcom/ta/audid/db/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# static fields
.field private static hasCheckdb:Z = false
    .annotation runtime Lcom/ta/audid/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field public _id:J
    .annotation runtime Lcom/ta/audid/db/annotation/Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/ta/audid/db/Entity;->_id:J

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/db/DBMgr;->delete(Lcom/ta/audid/db/Entity;)I

    return-void
.end method

.method public store()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/db/DBMgr;->insert(Lcom/ta/audid/db/Entity;)V

    return-void
.end method
