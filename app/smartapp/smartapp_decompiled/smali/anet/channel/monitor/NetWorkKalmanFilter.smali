.class Lanet/channel/monitor/NetWorkKalmanFilter;
.super Ljava/lang/Object;
.source "NetWorkKalmanFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "speed.NetWorkKalmanFilter"


# instance fields
.field private Kalman_C1:D

.field private Kalman_C2:D

.field private Kalman_Count:J

.field private Kalman_ek:D

.field private Kalman_z:D

.field private kalman_Kk:D

.field private kalman_Pk:D

.field private kalman_Q:D

.field private kalman_R:D

.field private kalman_Xk:D

.field private mcurrentNetWorkSpeed:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_Count:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C1:D

    iput-wide v0, p0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C2:D

    .line 20
    iput-wide v0, p0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    return-void
.end method


# virtual methods
.method public ResetKalmanParams()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_Count:J

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    return-void
.end method

.method public addMeasurement(DD)D
    .locals 17

    move-object/from16 v0, p0

    div-double v1, p1, p3

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    cmpg-double v7, v1, v5

    if-gez v7, :cond_1

    .line 38
    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_Count:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_0

    .line 39
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    return-wide v1

    .line 41
    :cond_0
    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    .line 42
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    return-wide v1

    .line 51
    :cond_1
    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_Count:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    .line 52
    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C1:D

    .line 53
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C1:D

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    .line 55
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double v5, v1, v3

    iput-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    mul-double v5, v5, v1

    .line 56
    iput-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Q:D

    mul-double v3, v3, v1

    mul-double v3, v3, v1

    .line 57
    iput-wide v3, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Pk:D

    goto/16 :goto_2

    :cond_2
    const-wide/16 v3, 0x1

    cmp-long v7, v5, v3

    if-nez v7, :cond_3

    .line 59
    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C2:D

    .line 60
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C2:D

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    goto/16 :goto_2

    .line 63
    :cond_3
    iget-wide v3, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C2:D

    sub-double v5, v1, v3

    .line 65
    iput-wide v3, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C1:D

    .line 66
    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C2:D

    const-wide v3, 0x3fee666666666666L    # 0.95

    div-double/2addr v1, v3

    .line 68
    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_z:D

    .line 69
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_z:D

    iget-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    mul-double v7, v7, v3

    sub-double/2addr v1, v7

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_ek:D

    const/4 v1, 0x0

    .line 73
    iget-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 74
    iget-wide v9, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_ek:D

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    mul-double v11, v11, v7

    const/4 v2, 0x2

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    const/4 v15, 0x1

    cmpl-double v16, v9, v11

    if-ltz v16, :cond_4

    mul-double v9, v9, v13

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v11

    add-double/2addr v9, v7

    .line 76
    iput-wide v9, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_ek:D

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 v11, -0x3ff0000000000000L    # -4.0

    mul-double v11, v11, v7

    cmpg-double v16, v9, v11

    if-gtz v16, :cond_5

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    mul-double v7, v7, v11

    mul-double v9, v9, v13

    add-double/2addr v7, v9

    .line 79
    iput-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_ek:D

    const/4 v1, 0x2

    :cond_5
    :goto_0
    const-wide v7, 0x3ff0cccccccccccdL    # 1.05

    .line 82
    iget-wide v9, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    mul-double v9, v9, v7

    const-wide v7, 0x3f647ae147ae147bL    # 0.0025

    iget-wide v11, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_ek:D

    mul-double v7, v7, v11

    mul-double v7, v7, v11

    sub-double/2addr v9, v7

    .line 84
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fe999999999999aL    # 0.8

    iget-wide v11, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    mul-double v11, v11, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    .line 85
    iget-wide v11, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    mul-double v11, v11, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    .line 87
    iget-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Pk:D

    const-wide v9, 0x3fece147ae147ae1L    # 0.9025

    mul-double v9, v9, v7

    iget-wide v11, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_R:D

    add-double/2addr v9, v11

    div-double/2addr v7, v9

    iput-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Kk:D

    .line 88
    iget-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    const-wide v9, 0x3ff0d79435e50d79L    # 1.0526315789473684

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Kk:D

    iget-wide v9, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_ek:D

    mul-double v5, v5, v9

    add-double/2addr v7, v5

    iput-wide v7, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    if-ne v1, v15, :cond_6

    .line 91
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_z:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    goto :goto_1

    :cond_6
    if-ne v1, v2, :cond_7

    .line 93
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_z:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    :cond_7
    :goto_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 96
    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Kk:D

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Pk:D

    iget-wide v5, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Q:D

    add-double/2addr v3, v5

    mul-double v1, v1, v3

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Pk:D

    .line 99
    :goto_2
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_8

    .line 100
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->Kalman_C2:D

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    .line 101
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->kalman_Xk:D

    goto :goto_3

    .line 103
    :cond_8
    iput-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    .line 106
    :goto_3
    iget-wide v1, v0, Lanet/channel/monitor/NetWorkKalmanFilter;->mcurrentNetWorkSpeed:D

    return-wide v1
.end method
