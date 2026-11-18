.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;
.super Ljava/lang/Object;
.source "GeneralUserEventDTO.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO$1;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO$1;-><init>()V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->eventType:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->data:Ljava/util/HashMap;

    .line 29
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->data:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->data:Ljava/util/HashMap;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->eventType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 34
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->eventType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->data:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
