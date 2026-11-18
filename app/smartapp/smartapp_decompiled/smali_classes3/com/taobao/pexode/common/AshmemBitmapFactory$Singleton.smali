.class Lcom/taobao/pexode/common/AshmemBitmapFactory$Singleton;
.super Ljava/lang/Object;
.source "AshmemBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/pexode/common/AshmemBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/pexode/common/AshmemBitmapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/taobao/pexode/common/AshmemBitmapFactory;

    invoke-direct {v0}, Lcom/taobao/pexode/common/AshmemBitmapFactory;-><init>()V

    sput-object v0, Lcom/taobao/pexode/common/AshmemBitmapFactory$Singleton;->INSTANCE:Lcom/taobao/pexode/common/AshmemBitmapFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/pexode/common/AshmemBitmapFactory;
    .locals 1

    .line 13
    sget-object v0, Lcom/taobao/pexode/common/AshmemBitmapFactory$Singleton;->INSTANCE:Lcom/taobao/pexode/common/AshmemBitmapFactory;

    return-object v0
.end method
