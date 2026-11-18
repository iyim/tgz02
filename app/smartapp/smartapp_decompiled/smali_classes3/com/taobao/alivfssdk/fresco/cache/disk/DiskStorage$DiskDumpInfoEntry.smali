.class public Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;
.super Ljava/lang/Object;
.source "DiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskDumpInfoEntry"
.end annotation


# instance fields
.field public final firstBits:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final size:F

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;->path:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;->type:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;->size:F

    .line 43
    iput-object p4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;->firstBits:Ljava/lang/String;

    return-void
.end method
