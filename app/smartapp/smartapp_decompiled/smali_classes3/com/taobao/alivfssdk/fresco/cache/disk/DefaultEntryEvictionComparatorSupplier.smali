.class public Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultEntryEvictionComparatorSupplier;
.super Ljava/lang/Object;
.source "DefaultEntryEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public get()Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparator;
    .locals 1

    .line 18
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultEntryEvictionComparatorSupplier$1;

    invoke-direct {v0, p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultEntryEvictionComparatorSupplier$1;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultEntryEvictionComparatorSupplier;)V

    return-object v0
.end method
