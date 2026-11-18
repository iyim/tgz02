.class public Lcom/taobao/phenix/strategy/ModuleStrategy;
.super Ljava/lang/Object;
.source "ModuleStrategy.java"


# instance fields
.field public final diskCachePriority:I

.field public final memoryCachePriority:I

.field public final name:Ljava/lang/String;

.field public final preloadWithSmall:Z

.field public final scaleFromLarge:Z

.field public final schedulePriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/phenix/strategy/ModuleStrategy;->name:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/taobao/phenix/strategy/ModuleStrategy;->schedulePriority:I

    .line 31
    iput p3, p0, Lcom/taobao/phenix/strategy/ModuleStrategy;->memoryCachePriority:I

    .line 32
    iput p4, p0, Lcom/taobao/phenix/strategy/ModuleStrategy;->diskCachePriority:I

    .line 33
    iput-boolean p5, p0, Lcom/taobao/phenix/strategy/ModuleStrategy;->preloadWithSmall:Z

    .line 34
    iput-boolean p6, p0, Lcom/taobao/phenix/strategy/ModuleStrategy;->scaleFromLarge:Z

    return-void
.end method
