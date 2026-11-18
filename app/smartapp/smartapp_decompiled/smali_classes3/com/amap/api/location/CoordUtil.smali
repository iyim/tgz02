.class public Lcom/amap/api/location/CoordUtil;
.super Ljava/lang/Object;
.source "CoordUtil.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static native convertToGcj([D[D)I
.end method

.method public static isLoadedSo()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/location/CoordUtil;->a:Z

    return v0
.end method

.method public static setLoadedSo(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/location/CoordUtil;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
