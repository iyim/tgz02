.class Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field barColor:I

.field barWidth:I

.field circleRadius:I

.field fillRadius:Z

.field isSpinning:Z

.field linearProgress:Z

.field mProgress:F

.field mTargetProgress:F

.field rimColor:I

.field rimWidth:I

.field spinSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 755
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 724
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$1;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 720
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 740
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 741
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 742
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 743
    iget-boolean p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 744
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 745
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-boolean p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 751
    iget-boolean p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
