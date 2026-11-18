.class public Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;
.super Ljava/lang/Object;
.source "DImageViewConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/constructor/DImageViewConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageOption"
.end annotation


# instance fields
.field public borderColor:Ljava/lang/String;

.field public borderWidth:Ljava/lang/String;

.field public cornerRadius:Ljava/lang/String;

.field private isNeedBorderColor:Z

.field private isNeedBorderWidth:Z

.field private isNeedClipRadius:Z

.field private isNeedLimitSize:Z

.field private isNeedRatio:Z

.field private isNeedSetImageUrl:Z

.field public module:Ljava/lang/String;

.field public orientation:I

.field public ratio:F

.field public sizeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$002(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;Z)Z
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedLimitSize:Z

    return p1
.end method

.method static synthetic access$102(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;Z)Z
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedClipRadius:Z

    return p1
.end method

.method static synthetic access$202(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;Z)Z
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedBorderColor:Z

    return p1
.end method

.method static synthetic access$302(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;Z)Z
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedBorderWidth:Z

    return p1
.end method

.method static synthetic access$402(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;Z)Z
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedSetImageUrl:Z

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;Z)Z
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedRatio:Z

    return p1
.end method


# virtual methods
.method public isNeedBorderColor()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedBorderColor:Z

    return v0
.end method

.method public isNeedBorderWidth()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedBorderWidth:Z

    return v0
.end method

.method public isNeedClipRadius()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedClipRadius:Z

    return v0
.end method

.method public isNeedLimitSize()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedLimitSize:Z

    return v0
.end method

.method public isNeedRatio()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedRatio:Z

    return v0
.end method

.method public isNeedSetImageUrl()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$ImageOption;->isNeedSetImageUrl:Z

    return v0
.end method
